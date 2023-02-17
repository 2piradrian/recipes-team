import React from "react";

type Props = {
	href: string;
	ariaLabel: string;
	target?: string;
	children: React.ReactNode;
};

function InvisibleAnchor({ children }: Props) {
	return <a>{children}</a>;
}

export default InvisibleAnchor;
